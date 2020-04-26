
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
      'Mt. Hood Hospice',
      '39065 Pioneer Blvd #103
Sandy, OR 97055',
      'Sandy',
      'OR',
      'Doors are locked. Call 503-668-5545 for curbside dropoff.',
      'Yes',
      '45.3964585',
      '-122.260997'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Hood Hospice'
        AND o.latitude = '45.3964585'
        AND o.longitude = '-122.260997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Hood Hospice'
        AND o.latitude = '45.3964585'
        AND o.longitude = '-122.260997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Hood Hospice'
        AND o.latitude = '45.3964585'
        AND o.longitude = '-122.260997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Hood Hospice'
        AND o.latitude = '45.3964585'
        AND o.longitude = '-122.260997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Hood Hospice'
        AND o.latitude = '45.3964585'
        AND o.longitude = '-122.260997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Hood Hospice'
        AND o.latitude = '45.3964585'
        AND o.longitude = '-122.260997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Hood Hospice'
        AND o.latitude = '45.3964585'
        AND o.longitude = '-122.260997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Hood Hospice'
        AND o.latitude = '45.3964585'
        AND o.longitude = '-122.260997'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Hood Hospice'
        AND o.latitude = '45.3964585'
        AND o.longitude = '-122.260997'));

COMMIT;
