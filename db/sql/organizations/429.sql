
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
      'Kansas City Fire Department',
      '635 Woodland Ave
Kansas City, MO 64106',
      'Kansas City',
      'MO',
      'Can pick up from anywhere within an hour''s drive, or delivery is an option to our facility. ',
      'unsure',
      '39.1054696',
      '-94.5597263'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kansas City Fire Department'
        AND o.latitude = '39.1054696'
        AND o.longitude = '-94.5597263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kansas City Fire Department'
        AND o.latitude = '39.1054696'
        AND o.longitude = '-94.5597263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kansas City Fire Department'
        AND o.latitude = '39.1054696'
        AND o.longitude = '-94.5597263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kansas City Fire Department'
        AND o.latitude = '39.1054696'
        AND o.longitude = '-94.5597263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kansas City Fire Department'
        AND o.latitude = '39.1054696'
        AND o.longitude = '-94.5597263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kansas City Fire Department'
        AND o.latitude = '39.1054696'
        AND o.longitude = '-94.5597263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kansas City Fire Department'
        AND o.latitude = '39.1054696'
        AND o.longitude = '-94.5597263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kansas City Fire Department'
        AND o.latitude = '39.1054696'
        AND o.longitude = '-94.5597263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kansas City Fire Department'
        AND o.latitude = '39.1054696'
        AND o.longitude = '-94.5597263'));

COMMIT;
