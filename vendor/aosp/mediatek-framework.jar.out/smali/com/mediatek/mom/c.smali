.class Lcom/mediatek/mom/c;
.super Lcom/mediatek/mom/PermissionHistoryBase;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 53
    iput-object p1, p0, Lcom/mediatek/mom/c;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/mediatek/mom/c;->b:Ljava/lang/String;

    .line 55
    iput p5, p0, Lcom/mediatek/mom/c;->c:I

    .line 56
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/mom/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/mom/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/mom/c;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    instance-of v2, p1, Lcom/mediatek/mom/c;

    if-nez v2, :cond_2

    move v0, v1

    .line 94
    goto :goto_0

    .line 97
    :cond_2
    check-cast p1, Lcom/mediatek/mom/c;

    .line 99
    iget v2, p0, Lcom/mediatek/mom/c;->c:I

    invoke-virtual {p1}, Lcom/mediatek/mom/c;->c()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/mediatek/mom/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mediatek/mom/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/mom/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mediatek/mom/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackagePermissionHistory {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mom/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mom/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/c;->getStartTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/c;->getEndTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
