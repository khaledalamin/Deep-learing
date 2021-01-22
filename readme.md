<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
<!-- [![MIT License][license-shield]][license-url] -->
[![LinkedInKhaled][linkedin-khaled-shield]][linkedin-khaled-url]


<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
      <li><a href="#about-the-project">About The Project</a>
      <li><a href="#Implementation">Implementation</a></li>
      <li><a href="#installation">Installation</a></li>
      <li><a href="#contributing">Contributing</a></li>
      <li><a href="#license">License</a></li>
      <li><a href="#contact">Contact</a></li>
      <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project




## Implementation

### Binary classification dataset

The dataset which used was extracted by [(GTI) of Universidad Politécnica de Madrid (UPM) research group](file:///C:/Users/kalee/Desktop/car_camera_front_view/Vehicle_database_OwnCollection.html) from a video sequences. The images have 64x64 and are cropped from sequences of 360x256 pixels recorded in highways of Madrid, Brussels and Turin.

### Multiclassification dataset (Caltech101)

Pictures of objects belonging to 101 categories. About 40 to 800 images per category. Most categories have about 50 images. Collected in September 2003 by Fei-Fei Li, Marco Andreetto, and Marc 'Aurelio Ranzato.  The size of each image is roughly 300 x 200 pixels. [For more info!](http://www.vision.caltech.edu/Image_Datasets/Caltech101/)


## Dependencies 

The neural network has been trained using Python 3.6. The parameters (weight & bias) of the trained neural network have been deployed in STM32F429 using C. The unclassified images (test set) are sent via virtual COMM to the STM to decide (based on the fitted model) either the image containing a car or not and display the result on the screen.


## Installation

- The dataset of `binary classification dataset` is open for use of other researchers and can be downloaded [here](http://www.gti.ssr.upm.es/~jal/download.html)
- The dataset of `multiclassification dataset (Caltech101)` can be downloaded [here](http://www.vision.caltech.edu/Image_Datasets/Caltech101/#Download)

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.




<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Khaled Alamin - [@LinkedIn](https://www.linkedin.com/in/khaled-alamin/)
<!--Project Link: [https://github.com/your_username/repo_name](https://github.com/your_username/repo_name)-->


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [Img Shields](https://shields.io)
* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Pages](https://pages.github.com)
* [Animate.css](https://daneden.github.io/animate.css)
* [Loaders.css](https://connoratherton.com/loaders)
* [Slick Carousel](https://kenwheeler.github.io/slick)
* [Smooth Scroll](https://github.com/cferdinandi/smooth-scroll)
* [Sticky Kit](http://leafo.net/sticky-kit)
* [JVectorMap](http://jvectormap.com)
* [Font Awesome](https://fontawesome.com)



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/KhaledAlamin/Huawei_embedded_dnn/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/KhaledAlamin/Huawei_embedded_dnn/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/KhaledAlamin/Huawei_embedded_dnn/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/KhaledAlamin/Huawei_embedded_dnn/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/KhaledAlamin/Huawei_embedded_dnn/blob/main/LICENSE.txt
[linkedin-khaled-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-khaled-url]: https://www.linkedin.com/in/khaled-alamin/
[linkedin-eyas-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-eyas-url]: https://www.linkedin.com/in/EyasAli/
