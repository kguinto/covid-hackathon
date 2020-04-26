
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
      'New Hope Integrated Behavioral Health Care ',
      '80 Conover Rd
Marlboro Township, NJ 07746',
      'Marlboro',
      'NJ',
      'Curbside',
      'Yes',
      '40.3451913',
      '-74.227883'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hope Integrated Behavioral Health Care '
        AND o.latitude = '40.3451913'
        AND o.longitude = '-74.227883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hope Integrated Behavioral Health Care '
        AND o.latitude = '40.3451913'
        AND o.longitude = '-74.227883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hope Integrated Behavioral Health Care '
        AND o.latitude = '40.3451913'
        AND o.longitude = '-74.227883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hope Integrated Behavioral Health Care '
        AND o.latitude = '40.3451913'
        AND o.longitude = '-74.227883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hope Integrated Behavioral Health Care '
        AND o.latitude = '40.3451913'
        AND o.longitude = '-74.227883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hope Integrated Behavioral Health Care '
        AND o.latitude = '40.3451913'
        AND o.longitude = '-74.227883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hope Integrated Behavioral Health Care '
        AND o.latitude = '40.3451913'
        AND o.longitude = '-74.227883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hope Integrated Behavioral Health Care '
        AND o.latitude = '40.3451913'
        AND o.longitude = '-74.227883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hope Integrated Behavioral Health Care '
        AND o.latitude = '40.3451913'
        AND o.longitude = '-74.227883'));

COMMIT;
