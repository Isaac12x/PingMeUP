import urllib2
import web

urls = (
'/', 'Hello'
)
app = web.application(urls, globals())

class Hello:
    def GET(self):
        text = ''
        text = urllib2.urlopen('https://raw.githubusercontent.com/Isaac12x/PingMeUp/master/index.html').read()
        return text


if __name__ == '__main__':
    app.run()
