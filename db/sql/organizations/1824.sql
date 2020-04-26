
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Santa Rosa Health and Rehabilitation',
      '5386 Broad St
Milton, FL 32570',
      'Milton',
      'FL',
      'See receptionist at front door; for mail Attn: Melody Hines',
      'Yes',
      '30.62974',
      '-87.0370118'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Health and Rehabilitation'
        AND o.latitude = '30.62974'
        AND o.longitude = '-87.0370118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Health and Rehabilitation'
        AND o.latitude = '30.62974'
        AND o.longitude = '-87.0370118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Health and Rehabilitation'
        AND o.latitude = '30.62974'
        AND o.longitude = '-87.0370118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Health and Rehabilitation'
        AND o.latitude = '30.62974'
        AND o.longitude = '-87.0370118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Health and Rehabilitation'
        AND o.latitude = '30.62974'
        AND o.longitude = '-87.0370118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Health and Rehabilitation'
        AND o.latitude = '30.62974'
        AND o.longitude = '-87.0370118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Health and Rehabilitation'
        AND o.latitude = '30.62974'
        AND o.longitude = '-87.0370118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Health and Rehabilitation'
        AND o.latitude = '30.62974'
        AND o.longitude = '-87.0370118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Rosa Health and Rehabilitation'
        AND o.latitude = '30.62974'
        AND o.longitude = '-87.0370118'));

COMMIT;
