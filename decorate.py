#coding=utf-8
'''
this is a script to learn how python decorate to work!
wrote by chencheng on 2017-04-24
'''
#part one:
import time

def log(func):
    def warpper(*args,**kwargs):
        print 'call:{func_name}'.format(func_name=func.__name__)
        return func(*args,**kwargs)
    return warpper
@log
def now():
    print time.time()
    print time.localtime(time.time())
    print time.strftime("%Y-%m-%d",time.localtime())

#part two:
def my_decorator(func):
    print "I'm a ordinary function"
    def wrapper():
        print "I'm function returned by the decorator"
        func()
    return wrapper

@my_decorator
def lazy_func():
    print 'zzzz'
#part three:
def log2(text):
    def my_decorator(func):
        def warpper(*args,**kw):
            print 'haha:{name}'.format(name=text)
            func(*args,**kw)
        return warpper
    return my_decorator

@log2('chencheng')
def now():
    print '2017-04-25'

if __name__ == '__main__':
    now()
    print '--------'
    lazy_func()
    print '--------'










