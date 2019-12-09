
#ifndef LIB_H
#define LIB_H

#ifdef API_EXPORTS
   #define API __attribute__((visibility("default")))
#else
   #define API 
#endif

class API Exception
{
public:
     virtual ~ Exception() = 0;
     void SetReporter();
};

class API FileException : public Exception
{
public:
   ~FileException();
};

#endif
