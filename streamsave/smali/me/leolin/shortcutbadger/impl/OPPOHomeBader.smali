.class public Lme/leolin/shortcutbadger/impl/OPPOHomeBader;
.super Ljava/lang/Object;
.source "OPPOHomeBader.java"

# interfaces
.implements Lme/leolin/shortcutbadger/Badger;


# static fields
.field private static final INTENT_ACTION:Ljava/lang/String; = "com.oppo.unsettledevent"

.field private static final INTENT_EXTRA_BADGEUPGRADE_COUNT:Ljava/lang/String; = "app_badge_count"

.field private static final INTENT_EXTRA_BADGE_COUNT:Ljava/lang/String; = "number"

.field private static final INTENT_EXTRA_BADGE_UPGRADENUMBER:Ljava/lang/String; = "upgradeNumber"

.field private static final INTENT_EXTRA_PACKAGENAME:Ljava/lang/String; = "pakeageName"

.field private static final PROVIDER_CONTENT_URI:Ljava/lang/String; = "content://com.android.badge/badge"


# instance fields
.field private mCurrentTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lme/leolin/shortcutbadger/impl/OPPOHomeBader;->mCurrentTotalCount:I

    return-void
.end method

.method private executeBadgeByBroadcast(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/leolin/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .prologue
    .line 55
    if-nez p3, :cond_0

    .line 56
    const/4 p3, -0x1

    .line 58
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.unsettledevent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pakeageName"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "upgradeNumber"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    invoke-static {p1, v0}, Lme/leolin/shortcutbadger/util/BroadcastHelper;->sendIntentExplicitly(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method private executeBadgeByContentProvider(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "badgeCount"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/leolin/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "app_badge_count"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.badge/badge"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "setAppBadgeCount"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 78
    .end local v0    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "ignored":Ljava/lang/Throwable;
    new-instance v2, Lme/leolin/shortcutbadger/ShortcutBadgeException;

    const-string v3, "Unable to execute Badge By Content Provider"

    invoke-direct {v2, v3}, Lme/leolin/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/leolin/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .prologue
    .line 37
    iget v0, p0, Lme/leolin/shortcutbadger/impl/OPPOHomeBader;->mCurrentTotalCount:I

    if-ne v0, p3, :cond_0

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    iput p3, p0, Lme/leolin/shortcutbadger/impl/OPPOHomeBader;->mCurrentTotalCount:I

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 42
    invoke-direct {p0, p1, p3}, Lme/leolin/shortcutbadger/impl/OPPOHomeBader;->executeBadgeByContentProvider(Landroid/content/Context;I)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lme/leolin/shortcutbadger/impl/OPPOHomeBader;->executeBadgeByBroadcast(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_0
.end method

.method public getSupportLaunchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "com.oppo.launcher"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method