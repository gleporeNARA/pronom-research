import re
import nameparser
from nicknames import NameDenormalizer

################### Luke's original Entry class
class Entry(object):
     def __init__(self, name, gender, age, city, time):
         self.name = str(name)
         self.gender = str(gender)
         self.age = str(age)
         self.city = str(city)
         self.time = str(time)
 
     def __str__(self):
         return "Name: " + self.name + "\nGender: " + self.gender + "\nAge: " + self.age + \
                "\nCity " + self.city + "\nTime " + self.time + "\n"


##################### Jim's Record class with is_Strider() functionality

# Define bitmask values for types of matching to perform
NAME_AGE_CITY = 1 #  fullname, age, city
NICK_AGE_CITY = 2 #  nickname, age, city
NAME_AGE      = 3 #  fullname, age
NICK_AGE      = 4 #  nickname, age
NAME_CITY     = 5 # fullname, city
NICK          = 6 #  nick
NAME          = 7 #  name

MATCH_NAMES = {1: 'NAME_AGE_CITY', 2: 'NICK_AGE_CITY', 3: 'NAME_AGE',
               4: 'NICK_AGE', 5: 'NAME_CITY', 6: 'NAME', 7: 'NICK'}

class Record:
    def __init__(self, name, age, gender, time, city):
        #print ("name is " + str(name))
        #print ("gender is " + str(gender))
        #print ("age is |" + str(age) +"|")
        #print ("city is " + str(city))
        #print ("time is " + str(time))
        if str(name) != "nan" and str(name) != "":
            self.name = name
            _parsed_name = nameparser.HumanName(self.name)
            self.firstname = _parsed_name.first
            self.lastname = _parsed_name.last
        else:
            self.firstname = "SKIP"
            self.lastname = "ME"
        self.gender = gender
        #if str(age) != "nan" and str(age) != "==" and str(age) != "===" and str(age) != "" and str(age) != "--":
        if str(age) != "nan" and str(age) != "==" and str(age) != "===" and str(age) != "" and str(age) != "--" and str(age) != "###" and str(age) != "Age":
            self.age = int(age)
        else:
            self.age = "0"
        # Trim off a state, if any ("Columbia, MD" -> "Columbia")
        
        self.city = city
        if str(self.city) != 'nan':
            self.city = re.sub(r'(.+?),? [A-Z]{2}$', r'\1', city)
        self.time = time
    
    def __str__(self):
            fmt_string = "{:30s} {:2s}  {:2s} {:20s} {:22s}"
            return fmt_string.format(str(self.name).title(), str(self.age), str(self.gender), str(self.time), str(self.city))
    
    def __repr__(self):
        fmt_string = "Record('{}', '{}', {}, '{}', '{}')"
        return fmt_string.format(self.name, self.age, self.gender, self.time, self.city)
    
    def sparse_output(self):
        fmt_string = "{:30s} {:>8s}"
        output_time = re.sub(r'\.\d{1,2}$', '', self.time) # Remove trailing decimal fractions of seconds
        output_time = re.sub(r'^0([1-9]:)', r'\1', output_time)
        output_time = re.sub(r'^0{1,2}:', '', output_time) # Remove leading zeroes from times
        return fmt_string.format(self.name, output_time)
        
    def is_strider(self, cursor, queries = [NAME_AGE_CITY], nickfinder = None):
        """Test whether the record matches a Striders member
        as listed in a sqlite3 database. conn is a sqlite3 cursor.
        Queries is a list of ints to determine which tests to run.
        If using nicknames, MUST pass a NameDenormalizer() object to nickfinder argument.
        The method returns a tuple:
            (match_result, test_num) if it finds a match while doing test <testnum>
            (match_result, 0) if no match is found in any of the tests run.
            Note that a match_result is a list of tuples from the Striders db.
            Example: [('Doe', 'John', 'Columbia', 45)].
            If there's no match, match_result will be an empty list (which evaluates as False)."""
        
        if NAME_AGE_CITY in queries:
            q_str = "SELECT * FROM members WHERE fname LIKE ? AND lname LIKE ? AND city LIKE ? AND abs(age - ?) < 3"
            cursor.execute(q_str, (self.firstname, self.lastname, self.city, self.age))
            match_result = cursor.fetchall()
            if match_result:
                return (match_result, NAME_AGE_CITY)
        
        if NICK_AGE_CITY in queries:
            # Generate a set of alternate first name forms
            variants = nickfinder.get(self.firstname)
            q_str = "SELECT * FROM members WHERE fname LIKE ? AND lname LIKE ? AND city LIKE ? AND abs(age - ?) < 3"
            for variant in variants:
                cursor.execute(q_str, (variant, self.lastname, self.city, self.age))
                match_result = cursor.fetchall()
                if match_result:
                    return (match_result, NICK_AGE_CITY)
                    
        if NAME_AGE in queries:
            q_str = "SELECT * FROM members WHERE fname LIKE ? AND lname LIKE ? AND abs(age - ?) < 3"
            cursor.execute(q_str, (self.firstname, self.lastname, self.age))
            match_result = cursor.fetchall()
            if match_result:
                return (match_result, NAME_AGE)
        
        if NICK_AGE in queries:
            # Generate a set of alternate first name forms
            variants = nickfinder.get(self.firstname)
            q_str = "SELECT * FROM members WHERE fname LIKE ? AND lname LIKE ? AND abs(age - ?) < 3"
            for variant in variants:
                cursor.execute(q_str, (variant, self.lastname, self.age))
                match_result = cursor.fetchall()
                if match_result:
                    return (match_result, NICK_AGE)

        if NAME_CITY in queries:
            q_str = "SELECT * FROM members WHERE fname LIKE ? AND lname LIKE ? AND city LIKE ?"
            cursor.execute(q_str, (self.firstname, self.lastname, self.city))
            match_result = cursor.fetchall()
            if match_result:
                return (match_result, NAME_CITY)
                print ("found name city match")
            
        if NAME in queries:
            q_str = "SELECT * FROM members WHERE fname LIKE ? AND lname LIKE ?"
            cursor.execute(q_str, (self.firstname, self.lastname))
            match_result = cursor.fetchall()
            if match_result:
                return (match_result, NAME)
                print ("Found name or nick match")
            


        # Can insert other tests here as needed...
        
        return ([], 0) # No hits. So return (an empty match list, testnum=0)
