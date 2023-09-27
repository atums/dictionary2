package com.apys.dictionary2.domain;

import javax.persistence.*;

@Entity
@Table(name = "qae")
public class QuestionAnswerExample {
    @Id
    @Column(name = "record_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long recordId;

    @Column(name = "eng_word")
    private String englishWord;

    @Column(name = "rus_word")
    private String russianWord;

    @Column(name = "example")
    private String example;
}
