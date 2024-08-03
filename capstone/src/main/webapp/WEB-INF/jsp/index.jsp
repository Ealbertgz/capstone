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
<!-- Navbar-->
<nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 fixed-top">
    <div class="container">
        <a href="#" class="navbar-brand">Online Tutors</a>

        <button
                class="navbar-toggler"
                type = "button"
                data-bs-toggle = "collapse"
                data-bs-target="#navmenu"
        >
            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse" id="navmenu">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a  class="nav-link" href="/search">Search</a>
                </li>
                <li class="nav-item">
                    <a href="#learn" class="nav-link">What you'll learn</a>
                </li>
                <li class="nav-item">
                    <a href="#questions" class="nav-link">Questions</a>
                </li>
                <li class="nav-item">
                    <a href="#instructors" class="nav-link">Instructors</a>
                </li>


            </ul>
        </div>

    </div>

</nav>

<!-- Showcase-->
<section class="bg-dark text-light p-5 pt-lg-3 p-lg-0 text-center text-sm-start">
    <div class="container">
        <div class="d-sm-flex align-items-center justify-content-between">
            <div>
                <h1>Find the <span class="text-warning">
                    Perfect Online Tutor
                </span></h1>
                <p class="lead my-4">
                    We focus on blah blah blah blah blah
                    blah blah blah blah blah blah blah blah blah blah </p>
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
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            At odio similique dolor. Soluta, laborum odio!
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
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            At odio similique dolor. Soluta, laborum odio!
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
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            At odio similique dolor. Soluta, laborum odio!
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
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Temporibus odio quas, vitae voluptatum officiis quaerat.
                </p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Ipsam voluptatibus iusto, natus fugit facere libero aut,
                    quas rem totam quaerat dolorum, ullam voluptatum?
                    Quisquam architecto repudiandae ad? Quas, quos id.
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
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Temporibus odio quas, vitae voluptatum officiis quaerat.
                </p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Ipsam voluptatibus iusto, natus fugit facere libero aut,
                    quas rem totam quaerat dolorum, ullam voluptatum?
                    Quisquam architecto repudiandae ad? Quas, quos id.
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
                    <div class="accordion-body">Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                        Repellat deleniti blanditiis corrupti architecto necessitatibus optio officiis fugit ullam neque,
                        quis, at sapiente reprehenderit! Dignissimos ducimus eaque laudantium aliquid incidunt adipisci magni,
                        quisquam veniam nisi dolores quidem voluptatem beatae accusamus, voluptate reiciendis, sunt magnam earum!
                        Placeat adipisci neque illo laboriosam ex!</div>
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
                    <div class="accordion-body">Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                        Repellat deleniti blanditiis corrupti architecto necessitatibus optio officiis fugit ullam neque,
                        quis, at sapiente reprehenderit! Dignissimos ducimus eaque laudantium aliquid incidunt adipisci magni,
                        quisquam veniam nisi dolores quidem voluptatem beatae accusamus, voluptate reiciendis, sunt magnam earum!
                        Placeat adipisci neque illo laboriosam ex!</div>
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
                    <div class="accordion-body">Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                        Repellat deleniti blanditiis corrupti architecto necessitatibus optio officiis fugit ullam neque,
                        quis, at sapiente reprehenderit! Dignissimos ducimus eaque laudantium aliquid incidunt adipisci magni,
                        quisquam veniam nisi dolores quidem voluptatem beatae accusamus, voluptate reiciendis, sunt magnam earum!
                        Placeat adipisci neque illo laboriosam ex!</div>
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
                    <div class="accordion-body">Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                        Repellat deleniti blanditiis corrupti architecto necessitatibus optio officiis fugit ullam neque,
                        quis, at sapiente reprehenderit! Dignissimos ducimus eaque laudantium aliquid incidunt adipisci magni,
                        quisquam veniam nisi dolores quidem voluptatem beatae accusamus, voluptate reiciendis, sunt magnam earum!
                        Placeat adipisci neque illo laboriosam ex!</div>
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
            Our instructors all have 5+ years working as a web developer
            in the industry</p>
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
                        <img src="https://randomuser.me/api/portraits/women/13.jpg" class="rounded-circle mb-3" alt="">
                        <h3 class="card-title mb-3"> Silvija Kari </h3>
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
                        <img src="https://randomuser.me/api/portraits/men/15.jpg" class="rounded-circle mb-3" alt="">
                        <h3 class="card-title mb-3"> Radha Klaus </h3>
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

<!--Footer-->
<footer class="p-5 bg-dark text-white text-center position-relative">
    <div class="container">
        <p class="lead">Copyright &copy; 2024 All rights reserved</p>
        <a href="#" class="position-absolute buttom-0 end-0 p-5">
            <i class="bi bi-arrow-up-circle h1"></i>
        </a>
    </div>

</footer>

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