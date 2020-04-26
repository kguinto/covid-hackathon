
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
      'Piedmont Athens Regional Medical Center',
      '1500 Oglethorpe Avenue Suite 600E
Athens, GA 30606',
      'Athens',
      'GA',
      'Charles L Braucher Jr. ',
      'Yes',
      '33.9636508',
      '-83.4256788'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Athens Regional Medical Center'
        AND o.latitude = '33.9636508'
        AND o.longitude = '-83.4256788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Athens Regional Medical Center'
        AND o.latitude = '33.9636508'
        AND o.longitude = '-83.4256788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Athens Regional Medical Center'
        AND o.latitude = '33.9636508'
        AND o.longitude = '-83.4256788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Athens Regional Medical Center'
        AND o.latitude = '33.9636508'
        AND o.longitude = '-83.4256788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Athens Regional Medical Center'
        AND o.latitude = '33.9636508'
        AND o.longitude = '-83.4256788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Athens Regional Medical Center'
        AND o.latitude = '33.9636508'
        AND o.longitude = '-83.4256788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Athens Regional Medical Center'
        AND o.latitude = '33.9636508'
        AND o.longitude = '-83.4256788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Athens Regional Medical Center'
        AND o.latitude = '33.9636508'
        AND o.longitude = '-83.4256788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Athens Regional Medical Center'
        AND o.latitude = '33.9636508'
        AND o.longitude = '-83.4256788'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Athens Regional Medical Center'
        AND o.latitude = '33.9636508'
        AND o.longitude = '-83.4256788'));

COMMIT;
