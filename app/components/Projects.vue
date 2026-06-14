<template>
    <div class="w-full flex flex-col justify-start items-center-safe">
        <p id="projects" class="scroll-mt-25 text-4xl font-bold my-2">Projects</p>
        <div class="card card-lg w-full max-w-300 3xl:max-w-512 my-2 bg-base-100/60 shadow-sm">
            <div class="card-body">
                <h2 class="card-title">mapstruct<div class="badge badge-outline badge-success">Open Source</div>
                </h2>
                <p>
                    This is a famous open source library in Java world. The library is an annotation processor and
                    generates readable type-safe mappers for Java beans (objects).
                </p>
                <ul class="list-disc">
                    <li>Added the usage of new switch expression based on version info</li>
                    <li>Retained old switch statement for old versions</li>
                    <li>Improved output by eliminating unnecessary 'default' cases</li>
                    <li>Styled output using Freemarker</li>
                    <li>Updated test cases to accept new output</li>
                </ul>
                <p class="mt-2 font-bold text-lg">
                    <span class="p-1 underline text-primary">Technologies:</span>
                    Java, JUnit, Freemarker, Maven, git
                </p>
                <div class="card-actions justify-end">
                    <a href="https://github.com/mapstruct/mapstruct/pull/4065" target="_blank"
                        rel="noopener noreferrer">
                        <button class="btn btn-primary">Github Pull Request</button>
                    </a>
                </div>
            </div>
        </div>
        <div class="card card-lg w-full max-w-300 3xl:max-w-512 my-2 bg-base-100/60 shadow-sm">
            <div class="card-body">
                <h2 class="card-title">Sayax<div class="badge badge-outline badge-error">Commercial</div>
                </h2>
                <p>
                    Sayax is a modular, integrated with full time management/decision support system used by
                    electric companies in the energy market.
                </p>
                <ul class="list-disc">
                    <li>Contributed to Digital Energy Management</li>
                    <li>Improved and modularized user interfaces for a better user experience</li>
                    <li>Worked on government API integrations</li>
                </ul>
                <p class="mt-2 font-bold text-lg">
                    <span class="p-1 underline text-primary">Technologies:</span>
                    C#, ASP.NET, NHibernate, MSSQL, DevExtreme, git
                </p>
                <div class="card-actions justify-end">
                    <a href="https://www.sayax.com.tr/index.html" target="_blank" rel="noopener noreferrer">
                        <button class="btn btn-info">Company: Sayax</button>
                    </a>
                </div>
            </div>
        </div>
        <div class="card card-lg w-full max-w-300 3xl:max-w-512 my-2 bg-base-100/60 shadow-sm">
            <div class="card-body">
                <h2 class="card-title">ENXP<div class="badge badge-outline badge-error">Commercial</div>
                </h2>
                <p>
                    ENXP is centralized platform integrating operational data, financial transactions, and
                    commercial operations with banks and accounting systems. It is designed to work on
                    customers' private servers. Used for operations worth
                    <span class="font-bold">million dollars</span>.
                </p>
                <ul class="list-disc">
                    <li>Took over the project and maintained <span class="font-bold">independently</span></li>
                    <li>Managed licensing system, installment and deployments</li>
                    <li>Continuously upgraded the platform to comply with government regulations</li>
                    <li>Developed internal tools to integrate data from government platforms</li>
                </ul>
                <p class="italic">This project is deprecated by the project Sayax.</p>
                <p class="mt-2 font-bold text-lg">
                    <span class="p-1 underline text-primary">Technologies:</span>
                    C#, ASP.NET, NHibernate, MSSQL, DevExtreme, svn
                </p>
                <div class="card-actions justify-end">
                    <a href="https://www.aplusenerji.com.tr/en" target="_blank" rel="noopener noreferrer">
                        <button class="btn btn-info">Company: APlus</button>
                    </a>
                </div>
            </div>
        </div>
        <div class="card card-lg w-full max-w-300 3xl:max-w-512 my-2 bg-base-100/60 shadow-sm">
            <div class="card-body">
                <h2 class="card-title">ETRM<div class="badge badge-outline badge-error">Commercial</div>
                </h2>
                <p>
                    It stands for <span class="italic">Energy Trading and Risk Management</span>.
                    It provided management for bileteral agreements and access to analitics for risk management.
                </p>
                <ul class="list-disc">
                    <li>Worked as team using Agile methodoligies and Jira</li>
                    <li>Developed complex business algorithms, including scenerios require time series</li>
                </ul>
                <p class="mt-2 font-bold text-lg">
                    <span class="p-1 underline text-primary">Technologies:</span>
                    C#, ASP.NET, Fluent NHibernate, AngularJS, HTML, MSSQL, docker, DevExtreme, git
                </p>
                <div class="card-actions justify-end">
                    <a href="https://www.ctrmcenter.com/blog/ctrmcenter-news/two-more-etrm-vendors-from-the-ctrm-directory"
                        target="_blank" rel="noopener noreferrer">
                        <button class="btn btn-accent">On the Media</button>
                    </a>
                    <a href="https://www.aplusenerji.com.tr/en" target="_blank" rel="noopener noreferrer">
                        <button class="btn btn-info">Company: APlus</button>
                    </a>
                </div>
            </div>
        </div>
        <div class="card card-lg w-full max-w-300 3xl:max-w-512 my-2 bg-base-100/60 shadow-sm">
            <div class="card-body">
                <h2 class="card-title">Java Blog Engine<div class="badge badge-outline badge-info">Hobby</div>
                </h2>
                <p>REST API for a blog where users can create drafts & publish articles with category and tags</p>
                <p>This project is <span class="italic font-bold">Work In Progress</span></p>
                <p class="mt-2 font-bold text-lg">
                    <span class="p-1 underline text-primary">Technologies:</span>
                    Spring, Spring Boot, Spring Data JPA, Java JWT, PostgreSQL, docker
                </p>
                <div class="card-actions justify-end">
                    <a href="https://github.com/bydrim/java-blog-engine" target="_blank" rel="noopener noreferrer">
                        <button class="btn btn-primary">Github</button>
                    </a>
                </div>
            </div>
        </div>
        <div class="card card-lg w-full max-w-300 3xl:max-w-512 my-2 bg-base-100/60 shadow-sm">
            <div class="card-body">
                <h2 class="card-title">Fix It<div class="badge badge-outline badge-info">Hobby</div>
                </h2>
                <p>Web project for Electronics Repair Business to manage devices’ status & delivery where customers
                    can
                    track their devices also.</p>
                <p class="mt-2 font-bold text-lg">
                    <span class="p-1 underline text-primary">Technologies:</span>
                    Django, MySQL
                </p>
                <div class="card-actions justify-end">
                    <a href="https://github.com/bydrim/fix-it" target="_blank" rel="noopener noreferrer">
                        <button class="btn btn-primary">Github</button>
                    </a>
                </div>
            </div>
        </div>
        <div class="card card-lg w-full max-w-300 3xl:max-w-512 my-2 bg-base-100/60 shadow-sm">
            <div class="card-body">
                <h2 class="card-title">Dew News<div class="badge badge-outline badge-info">Hobby</div>
                </h2>
                <p>Frontend project to list topics from news.ycombinator.com where i explore using F# on frontend.
                </p>
                <p class="mt-2 font-bold text-lg">
                    <span class="p-1 underline text-primary">Technologies:</span>
                    F#, Fable, React, Tailwind CSS, DaisyUI
                </p>
                <div class="card-actions justify-end">
                    <a href="https://github.com/bydrim/DewNews" target="_blank" rel="noopener noreferrer">
                        <button class="btn btn-primary">Github</button>
                    </a>
                </div>
            </div>
        </div>
        <div class="card card-lg w-full max-w-300 3xl:max-w-512 my-2 bg-base-100/60 shadow-sm">
            <div class="card-body">
                <h2 class="card-title">Xylophone<div class="badge badge-outline badge-info">Hobby</div>
                </h2>
                <p>Flutter mobile project for playing a xylophone.</p>
                <p class="mt-2 font-bold text-lg">
                    <span class="p-1 underline text-primary">Technologies:</span>
                    Dart, Flutter, Android
                </p>
                <div class="card-actions justify-end">
                    <a href="https://github.com/bydrim/xylophone" target="_blank" rel="noopener noreferrer">
                        <button class="btn btn-primary">Github</button>
                    </a>
                </div>
            </div>
        </div>
        <div>&nbsp;</div>
    </div>
</template>
