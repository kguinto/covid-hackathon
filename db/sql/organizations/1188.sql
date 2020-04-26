
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
      'Neighborhood Health',
      '6677 Richmond Hwy
Alexandria, VA 22306',
      'Alexandria',
      'VA',
      'please call 980-322-1050 ',
      'Yes',
      '38.773524',
      '-77.0805047'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborhood Health'
        AND o.latitude = '38.773524'
        AND o.longitude = '-77.0805047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborhood Health'
        AND o.latitude = '38.773524'
        AND o.longitude = '-77.0805047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborhood Health'
        AND o.latitude = '38.773524'
        AND o.longitude = '-77.0805047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborhood Health'
        AND o.latitude = '38.773524'
        AND o.longitude = '-77.0805047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborhood Health'
        AND o.latitude = '38.773524'
        AND o.longitude = '-77.0805047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborhood Health'
        AND o.latitude = '38.773524'
        AND o.longitude = '-77.0805047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborhood Health'
        AND o.latitude = '38.773524'
        AND o.longitude = '-77.0805047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborhood Health'
        AND o.latitude = '38.773524'
        AND o.longitude = '-77.0805047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborhood Health'
        AND o.latitude = '38.773524'
        AND o.longitude = '-77.0805047'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborhood Health'
        AND o.latitude = '38.773524'
        AND o.longitude = '-77.0805047'));

COMMIT;
