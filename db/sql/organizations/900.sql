
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
      'Alta Bates Summit Medical Center ',
      '357 34th St
Oakland, CA 94609',
      'Oakland ',
      'CA',
      'Bring to ER entrance and speak to security to call charge RN to accept',
      'Yes',
      '37.822071',
      '-122.2627788'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center '
        AND o.latitude = '37.822071'
        AND o.longitude = '-122.2627788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center '
        AND o.latitude = '37.822071'
        AND o.longitude = '-122.2627788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center '
        AND o.latitude = '37.822071'
        AND o.longitude = '-122.2627788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center '
        AND o.latitude = '37.822071'
        AND o.longitude = '-122.2627788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center '
        AND o.latitude = '37.822071'
        AND o.longitude = '-122.2627788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center '
        AND o.latitude = '37.822071'
        AND o.longitude = '-122.2627788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center '
        AND o.latitude = '37.822071'
        AND o.longitude = '-122.2627788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center '
        AND o.latitude = '37.822071'
        AND o.longitude = '-122.2627788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center '
        AND o.latitude = '37.822071'
        AND o.longitude = '-122.2627788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alta Bates Summit Medical Center '
        AND o.latitude = '37.822071'
        AND o.longitude = '-122.2627788'));

COMMIT;
