<template>
    <section class="about-section">
        <div class="heading">
            <span>about us</span>
            <h3>good quality dishes</h3>
        </div>

        <div class="row">
            <div class="about-content">
                <img src="../assets/images/Mars_chef.png" alt="">
                <div class="about-content-text">
                    <p>Welcome to our restaurant on Mars! Our mission is to provide a unique dining experience for the brave
                        explorers who have ventured to the Red Planet.
                        <br>
                        Our restaurant is located in the heart of the first Martian colony, and we specialize in creating
                        delicious meals using locally grown and harvested ingredients. Our team of chefs and culinary
                        experts have developed a menu that is both nutritious and flavorful, featuring a wide range of
                        dishes inspired by both Earth and Martian cuisine.
                        <br><br>
                        Our dining area is designed to be comfortable and relaxing, with stunning views of the Martian
                        landscape. We have a fully stocked bar, offering a variety of cocktails and beverages to suit every
                        taste.

                        At our restaurant, we take food safety and sustainability seriously. We work closely with local
                        farmers to ensure that our ingredients are grown in a way that is both environmentally friendly and
                        safe for human consumption. We also have a state-of-the-art recycling system to minimize waste and
                        conserve resources.

                        Whether you're a seasoned space traveler or a first-time visitor to Mars, our restaurant is the
                        perfect place to relax and enjoy a delicious meal. We look forward to serving you!</p>
                   
                </div>
            </div>
        </div>

        <div class="row">
            <div class="about-article">
                <h3>food brings people together</h3>
            </div>
        </div>

        <div class="row gallery">
            <div class="wrapper">
                <img src="../assets/images/taco/taco-2.jpg" alt="">
                <img src="../assets/images/taco/taco-4.jpg" alt="">
                <img src="../assets/images/burrito/burrito-6.jpg" alt="">
                <img src="../assets/images/burrito/burrito-2.jpg" alt="">
                <img src="../assets/images/burrito/burrito-3.jpg" alt="">
                <img src="../assets/images/nachos/nachos-1.jpg" alt="">
                <img src="../assets/images/nachos/nachos-2.jpg" alt="">
                <img src="../assets/images/nachos/nachos-3.jpg" alt="">
                <img src="../assets/images/dessert/dessert-2.jpg" alt="">
                <img src="../assets/images/dessert/dessert-6.jpg" alt="">
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: "About",
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Satisfy&display=swap");

.about-section {
    padding: 2rem 9%;
}

.about-section .about-content {
    display: flex;
    width: 100%;

}

.about-section .about-content img {
    background-color: rgb(249, 249, 249);
}

.about-section .about-content .about-content-text {
    font-size: 16px;
    padding-left: 50px;
}

.about-section .about-article {
    margin-top: 50px;
    padding: 10px;
    text-align: center;
    background-color: #94231B;
    width: 100%;
}

.about-section .about-article h3 {
    font-family: 'Satisfy', cursive;
    font-size: 32px;
    color: white;
}


.about-section .gallery {
    overflow: hidden;
    padding: 100px;
}

.about-section .gallery .wrapper {
    position: relative;
    flex-grow: 1;
    margin: auto;
    max-width: 1200px;
    max-height: 1200px;
    display: grid;
    grid-template-columns: repeat(8, 1fr);
    grid-template-rows: repeat(4, 1fr);
    grid-gap: 2vmin;
    justify-items: center;
    align-items: center;
}

.about-section .gallery .wrapper img {
    z-index: 1;
    grid-column: span 2;
    max-width: 100%;
    margin-bottom: -52%;
    clip-path: polygon(50% 0%, 100% 50%, 50% 100%, 0% 50%);
    transform: scale(1);
    transition: all .25s;
}

.about-section .gallery .wrapper img:nth-child(7n + 1) {
    grid-column: 2 / span 2;
}

.about-section .gallery .wrapper img:hover {
    z-index: 2;
    transform: scale(2);
}

@media (max-width: 768px) {
    .about-section .about-content img {
        width: 250px;
    }

    .about-section .gallery .wrapper img:hover {
        transform: scale(2.5);
    }
}

@media (max-width: 576px) {
    .about-section .about-content img {
        width: inherit;
    }

    .about-section .about-content {
        display: block;
    }

    .about-section .about-content .about-content-text {
        padding-left: 0px;
    }

    .about-section .gallery {
        padding: 50px 0px;
    }

    .about-section .gallery .wrapper img {
        max-width: 100%;

    }

    .about-section .gallery .wrapper {
        grid-gap: 2vmin;
    }

    .about-section .gallery .wrapper img:hover {
        transform: scale(2);
    }

}</style>