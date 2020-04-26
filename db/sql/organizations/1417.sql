
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
      'Clear lake specialties ',
      '1543 Sara Ln
League City, TX 77573',
      'League city ',
      'TX',
      'Front door',
      'Yes',
      '29.4758979',
      '-95.0918589'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clear lake specialties '
        AND o.latitude = '29.4758979'
        AND o.longitude = '-95.0918589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clear lake specialties '
        AND o.latitude = '29.4758979'
        AND o.longitude = '-95.0918589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clear lake specialties '
        AND o.latitude = '29.4758979'
        AND o.longitude = '-95.0918589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clear lake specialties '
        AND o.latitude = '29.4758979'
        AND o.longitude = '-95.0918589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clear lake specialties '
        AND o.latitude = '29.4758979'
        AND o.longitude = '-95.0918589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clear lake specialties '
        AND o.latitude = '29.4758979'
        AND o.longitude = '-95.0918589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clear lake specialties '
        AND o.latitude = '29.4758979'
        AND o.longitude = '-95.0918589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clear lake specialties '
        AND o.latitude = '29.4758979'
        AND o.longitude = '-95.0918589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clear lake specialties '
        AND o.latitude = '29.4758979'
        AND o.longitude = '-95.0918589'));

COMMIT;
