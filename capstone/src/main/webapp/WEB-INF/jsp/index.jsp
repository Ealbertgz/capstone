<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
            crossorigin="anonymous"
    />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <link rel="stylesheet" href="pub/css/style.css">



    <title>Online Tutors</title>

</head>
<body>
<jsp:include page="include/header.jsp" />

<!-- Showcase-->
<section class="bg-dark text-light p-5 pt-lg-3 p-lg-0 text-center text-sm-start">
    <div class="container">
        <div class="d-sm-flex align-items-center justify-content-between">
            <div>
                <h1>Find the <span class="text-warning">
                    Perfect Online Tutor
                </span></h1>
                <p class="lead my-4">
                    Unlock your potential with personalized, expert online tutoring.
                    Connect with top tutors who are dedicated to helping you achieve your academic goals,
                    from the comfort of your home.
                </p>
                <button class="btn btn-primary btn-lg"
                        data-bs-toggle = "modal"
                        data-bs-target="#enroll">
                    Start the Enrollment
                </button>

            </div>
            <img class ="img-fluid w-50 d-none d-sm-block" src="pub/images/friends-video-calling.png" alt=""/>
        </div>
    </div>
</section>

<!-- Newsletter-->
<section class="bg-primary text-light p-5">
    <div class="container">
        <div class="d-md-flex justify-content-between align-items-center">
            <h3 class="mb-3 mb-md-0"> Sign Up for our Newsletter</h3>

            <div class="input-group news-input ">
                <input type="text"
                       class="form-control"
                       placeholder="Enter Email"

                />
                <button
                        class="btn btn-dark btn-lg"
                        type="button"
                >
                    Button
                </button>
            </div>
        </div>
    </div>
</section>

<!--Boxes-->
<section class="p-5">
    <div class="container">
        <div class="row text-center">
            <div class="col-md">
                <div class="card bg-dark text-light">
                    <div class="card-body text-center g-4">
                        <div class="h1 mb-3">
                            <i class="bi bi-laptop"></i>
                        </div>
                        <h3 class="card-title mb-3">
                            Virtual
                        </h3>
                        <p class="card-text">
                            Experience the future of learning with our seamless virtual tutoring sessions.
                            Wherever you are, get the personalized attention you need, without the hassle of commuting.
                            Empower your education, entirely online.

                        </p>
                        <a href="#" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>

            <div class="col-md">
                <div class="card bg-secondary text-light">
                    <div class="card-body text-center">
                        <div class="h1 mb-3">
                            <i class="bi bi-person-square"></i>
                        </div>
                        <h3 class="card-title mb-3">
                            Hybrid
                        </h3>
                        <p class="card-text">
                            Embrace the best of both worlds with our flexible hybrid tutoring.
                            Whether online or in-person, you can seamlessly switch between formats to suit your learning style and schedule.
                            Get the support you need, anytime, anywhere.

                        </p>
                        <a href="#" class="btn btn-dark">Read More</a>
                    </div>
                </div>
            </div>

            <div class="col-md">
                <div class="card bg-dark text-light">
                    <div class="card-body text-center">
                        <div class="h1 mb-3">
                            <i class="bi bi-people"></i>
                        </div>
                        <h3 class="card-title mb-3">
                            In person
                        </h3>
                        <p class="card-text">
                            Elevate your learning with personalized, face-to-face tutoring sessions.
                            Connect with expert tutors in a hands-on environment that fosters deeper understanding and real-time support.
                            Experience the power of in-person education.

                        </p>
                        <a href="#" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>
</section>

<!-- Learn Sections-->
<section id="learn" class="p-5">
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <div class="col-md">
                <img src="pub/images/learning.jpg " class="img-fluid" alt=""/>
            </div>
            <div class="col-md p-5">
                <h2>Connect with the experts you need</h2>
                <p class="lead">
                    Unlock your potential with direct access to industry-leading experts,
                    ready to guide your learning journey and help you excel.
                </p>
                <p>Gain a competitive edge by learning from those who have excelled in their fields.
                    Our experts are committed to helping you overcome obstacles and achieve mastery,
                    providing you with the tools and confidence to reach new heights.
                    Whether you're preparing for exams, advancing your career, or exploring new interests,
                    their guidance will empower you to make informed decisions and succeed in any endeavor.
                </p>
                <a href="#" class="btn btn-light mt-3">
                    <i class="bi bi-chevron-right"></i> Read More
                </a>
            </div>
        </div>
    </div>
</section>

<section id="learn" class="p-5 bg-dark text-light">
    <div class="container">
        <div class="row align-items-center justify-content-between">

            <div class="col-md p-5">
                <h2>Learn at your own pace</h2>
                <p class="lead">
                    Tailor your learning experience to fit your schedule and lifestyle.
                    Progress through material as quickly or as deliberately as you need,
                    ensuring deep understanding at every step.

                </p>
                <p>
                    Our flexible approach allows you to absorb information in a way that suits you best,
                    whether you prefer to dive deep into topics or take your time to fully grasp concepts.
                    No deadlines, no pressure—just effective, self-directed learning that aligns with your goals and pace.

                </p>
                <a href="#" class="btn btn-light mt-3">
                    <i class="bi bi-chevron-right"></i> Read More
                </a>
            </div>
            <div class="col-md">
                <img src="pub/images/learning2.png" class="img-fluid" alt=""/>
            </div>
        </div>
    </div>
</section>

<!--Question Accordion-->
<section id="questions" class="p-5">
    <div class="container">
        <h2 class="text-center mb-4">Frequently Asked Questions</h2>
        <div class="accordion accordion-flush" id="questions">
            <!--Item 1-->
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#question-one"

                            aria-expanded="false" aria-controls="flush-collapseOne">
                        Where exactly are you located?
                    </button>
                </h2>
                <div id="question-one" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#questions">
                    <div class="accordion-body">
                        We’re everywhere you need us to be.
                        Our services are designed to reach you wherever you are—whether you prefer virtual sessions from the comfort
                        of your home, in-person meetings at a convenient location, or a mix of both.
                        With a global network of experts, we're always nearby, ready to support your unique learning journey,
                        no matter where you are in the world.
                    </div>
                </div>
            </div>
            <!--Item 2-->
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#question-two"

                            aria-expanded="false" aria-controls="flush-collapseOne">
                        How much does it cost?
                    </button>
                </h2>
                <div id="question-two" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#questions">
                    <div class="accordion-body">
                        Our services are designed to be affordable and flexible,
                        fitting comfortably within your budget. You have the freedom to choose from a range of
                        pricing options tailored to your specific needs, whether you're looking for a one-time session or
                        ongoing support. We believe in providing high-quality education that’s accessible to everyone,
                        so you can invest in your future without breaking the bank. With transparent pricing and customizable plans,
                        you get the best value for your money while achieving your learning goals.
                    </div>
                </div>
            </div>
            <!--Item 3-->
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#question-three"

                            aria-expanded="false" aria-controls="flush-collapseOne">
                        What are the technical requirements?
                    </button>
                </h2>
                <div id="question-three" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#questions">
                    <div class="accordion-body">
                        Our platform is designed to be accessible and user-friendly,
                        with minimal technical requirements.
                        All you need is a stable internet connection and a device with a web browser—whether it's a computer,
                        tablet, or smartphone.
                        For the best experience, we recommend using the latest version of your preferred browser and h
                        aving a microphone and speakers or headphones for interactive sessions.
                        We strive to ensure that our services are easy to access and use,
                        so you can focus on learning without technical concerns.
                    </div>
                </div>
            </div>
            <!--Item 4-->
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#question-four"

                            aria-expanded="false" aria-controls="flush-collapseOne">
                        How do I sign up?
                    </button>
                </h2>
                <div id="question-four" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#questions">
                    <div class="accordion-body">Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                        Repellat deleniti blanditiis corrupti architecto necessitatibus optio officiis fugit ullam neque,
                        quis, at sapiente reprehenderit! Dignissimos ducimus eaque laudantium aliquid incidunt adipisci magni,
                        quisquam veniam nisi dolores quidem voluptatem beatae accusamus, voluptate reiciendis, sunt magnam earum!
                        Placeat adipisci neque illo laboriosam ex!</div>
                </div>
            </div>

            <!--Item 5-->
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#question-five"

                            aria-expanded="false" aria-controls="flush-collapseOne">
                        Is there a monthly fee?
                    </button>
                </h2>
                <div id="question-five" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#questions">
                    <div class="accordion-body">
                        Signing up is simple and straightforward.
                        There are no monthly fees or hidden charges.
                        To get started, you can browse our list of tutors,
                        choose one that fits your needs, and directly contact them to discuss your goals and agree on a price.
                        Enjoy the freedom to select a tutor and plan that works best for you,
                        without any ongoing commitments or additional costs.
                        We’re here to make your learning experience as flexible and personalized as possible.
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="instructors" class="p-5 bg-primary">
    <div class="container">
        <h2 class="text-center text-white">
            Our instructors
        </h2>
        <p class="lead text-center text-white mb-5">
            Our tutors are highly experienced and dedicated to helping you, regardless of your current skill level.
            Each one brings years of expertise in their field, ensuring you receive top-notch guidance and support tailored to your needs.

            </p>
        <div class="row g-4">
            <div class="col-md-6 col-lg-3">
                <div class="card bg-light">
                    <div class="card-body text-center">
                        <img src="https://randomuser.me/api/portraits/men/24.jpg" class="rounded-circle mb-3" alt="">
                        <h3 class="card-title mb-3"> Rohit Aleksey </h3>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                            Earum sint, quos praesentium doloribus eaque harum?</p>
                        <a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-facebook text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-linkedin text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-instagram text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="card bg-light">
                    <div class="card-body text-center">
                        <img src="https://randomuser.me/api/portraits/women/17.jpg" class="rounded-circle mb-3" alt="">
                        <h3 class="card-title mb-3"> Sri Aisyah </h3>
                        <p class="card-text">
                            Professional online math tutor with extensive experience in calculus, and geometry.
                            Offers tailored lessons designed to improve understanding and performance in math.
                            Committed to helping students build confidence and excel in their studies.
                        </p>
                        <a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-facebook text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-linkedin text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-instagram text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="card bg-light">
                    <div class="card-body text-center">
                        <img src="https://randomuser.me/api/portraits/women/13.jpg" class="rounded-circle mb-3" alt="">
                        <h3 class="card-title mb-3"> Silvija Kari </h3>
                        <p class="card-text">    Experienced online tutor specializing in Algebra.
                            Dedicated to providing personalized, effective instruction tailored to your learning needs.
                            Committed to helping you achieve your academic and professional goals.
                        </p>
                        <a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-facebook text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-linkedin text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-instagram text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="card bg-light">
                    <div class="card-body text-center">
                        <img src="https://randomuser.me/api/portraits/men/15.jpg" class="rounded-circle mb-3" alt="">
                        <h3 class="card-title mb-3"> Radha Klaus </h3>
                        <p class="card-text">    Skilled online language tutor specializing in Japanese.
                            Provides customized lessons to enhance fluency, comprehension, and communication skills.
                            Passionate about supporting learners at all levels to achieve their language learning goals.
                        </p>
                        <a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-facebook text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-linkedin text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-instagram text-dark mx-1"></i></a>
                        <a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>

<!--Contact and map-->
<section class="p-5">
    <div class="container">
        <div class="row g-4">
            <div class="col-md">
                <h2 class="text-center mb-4"> Contact Info</h2>
                <ul class="list-group list-group-flush lead">
                    <li class="list-group-item">
              <span class="fw-bold">
                Main Location:
              </span> 1111 Main st Austin,TX
                    </li>
                    <li class="list-group-item">
              <span class="fw-bold">
                Student Phone:
              </span> (512) 123-4567
                    </li>
                    <li class="list-group-item">
              <span class="fw-bold">
                Enrollment Email:
              </span> enroll@gmail.com
                    </li>
                    <li class="list-group-item">
              <span class="fw-bold">
                Student Email:
              </span> student@email.com
                    </li>
                </ul>
            </div>
            <div class="col-md">

            </div>
        </div>
    </div>
</section>



<jsp:include page="include/footer.jsp" />

<!-- Modal -->
<div class="modal fade" id="enroll" tabindex="-1" aria-labelledby="enrollLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="enrollLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p class="lead">Fill out this form and we will get back to you </p>
                <form>
                    <div class="mb-3">
                        <label for="first-name" class="col-form-label">
                            First Name:
                        </label>
                        <input type="text" class="form-control" id="first-name">
                    </div>

                    <div class="mb-3">
                        <label for="last-name" class="col-form-label">
                            Last Name:
                        </label>
                        <input type="text" class="form-control" id="last-name">
                    </div>

                    <div class="mb-3">
                        <label for="email" class="col-form-label">
                            Email:
                        </label>
                        <input type="text" class="form-control" id="email">
                    </div>

                    <div class="mb-3">
                        <label for="phone" class="col-form-label">
                            Phone:
                        </label>
                        <input type="tel" class="form-control" id="phone">
                    </div>



                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>