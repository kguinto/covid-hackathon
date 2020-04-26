
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
      'Chapel Hill Children''s Clinic',
      '301 Kildaire Rd #200
Chapel Hill, NC 27516',
      'Chapel Hill',
      'NC',
      '',
      'Yes',
      '35.8797883',
      '-79.0653442'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chapel Hill Children''s Clinic'
        AND o.latitude = '35.8797883'
        AND o.longitude = '-79.0653442'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chapel Hill Children''s Clinic'
        AND o.latitude = '35.8797883'
        AND o.longitude = '-79.0653442'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chapel Hill Children''s Clinic'
        AND o.latitude = '35.8797883'
        AND o.longitude = '-79.0653442'));

COMMIT;
