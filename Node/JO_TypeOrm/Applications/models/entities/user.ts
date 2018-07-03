import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";


@Entity("user",{schema:"dbo"})
export class user {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

    @Column("nvarchar",{ 
        nullable:false,
        length:255,
        name:"firstName"
        })
    firstName:string;
        

    @Column("nvarchar",{ 
        nullable:false,
        length:255,
        name:"lastName"
        })
    lastName:string;
        

    @Column("int",{ 
        nullable:false,
        name:"age"
        })
    age:number;
        
}
