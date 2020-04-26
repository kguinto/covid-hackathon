
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
      'Inland Northwest Behavioral Health',
      '104 W 5th Ave
Spokane, WA 99204',
      'Spokane',
      'WA',
      '',
      'Yes',
      '47.6517723',
      '-117.414111'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inland Northwest Behavioral Health'
        AND o.latitude = '47.6517723'
        AND o.longitude = '-117.414111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inland Northwest Behavioral Health'
        AND o.latitude = '47.6517723'
        AND o.longitude = '-117.414111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inland Northwest Behavioral Health'
        AND o.latitude = '47.6517723'
        AND o.longitude = '-117.414111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inland Northwest Behavioral Health'
        AND o.latitude = '47.6517723'
        AND o.longitude = '-117.414111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inland Northwest Behavioral Health'
        AND o.latitude = '47.6517723'
        AND o.longitude = '-117.414111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inland Northwest Behavioral Health'
        AND o.latitude = '47.6517723'
        AND o.longitude = '-117.414111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inland Northwest Behavioral Health'
        AND o.latitude = '47.6517723'
        AND o.longitude = '-117.414111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inland Northwest Behavioral Health'
        AND o.latitude = '47.6517723'
        AND o.longitude = '-117.414111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inland Northwest Behavioral Health'
        AND o.latitude = '47.6517723'
        AND o.longitude = '-117.414111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inland Northwest Behavioral Health'
        AND o.latitude = '47.6517723'
        AND o.longitude = '-117.414111'));

COMMIT;
