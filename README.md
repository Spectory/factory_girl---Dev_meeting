A small yet comprehensive reference for developers who want to know how to test Rails apps using FactoryGirl.
(A quick review on FactoryGirl, you can find here :
  https://www.spectory.com/blog/Factory%20girl%20the%20Story%20of%20Goldilocks%20and%20the%20Three%20Bears)
Here you'll find in-depth examples with detailed documentation explaining how to test with FactoryGirl gem, which you can then apply to your own projects.

This application was originally written for Dev meeting, who've found it a useful memory aid and catalyst for when they're learning FactoryGirl.
Now I'd like to get feedback from the wider community.

The repo contains examples of various FactoryGirl features such as traits, build_stubbed ,etc.

Below you'll find the structures of the app:

*app
  - models = definition of the models.

*db
  - migrate = all migrations of the models.
  - schema = the full schema.

*spec
  - factories = the definition of the factories.
  - fixtures = example of testing using fixtures in article.yml file.
  - models = examples tests using FactoryGirl.
