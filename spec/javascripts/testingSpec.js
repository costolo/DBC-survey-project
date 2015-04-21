describe ('login', function() {

beforeEach(function(){
        jasmine.getFixtures().fixturesPath = 'app/views/';
        jasmine.getFixtures().load('login.erb');
    });

  describe ("document", function() {
    it("should be in the DOM", function() {
      expect($('input')).toBeInDOM();
    });
  })

});

describe ('survey', function() {

beforeEach(function(){
        jasmine.getFixtures().fixturesPath = 'app/views/surveys';
        jasmine.getFixtures().load('show.erb');
    });

  describe ("#questions", function() {
    it("should be hidden", function() {
      expect($('#questions')[0]).toBeHidden();
    });
  })

  describe ('show questions', function() {
    it("should display questions when button is clicked", function() {
      console.log($('#show'));
      expect($button).toHandle("click");
    })
  })

});
