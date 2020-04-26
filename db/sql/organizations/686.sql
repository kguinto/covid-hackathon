
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
      'Dr. John J. Nguyen, Doctor''s Office',
      '12606 W Houston Ctr. Blvd #170
Houston, TX 77082',
      'Houston',
      'TX',
      '12606 W Houston Ctr. Blvd #170',
      'Yes',
      '29.7277352',
      '-95.5933306'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. John J. Nguyen, Doctor''s Office'
        AND o.latitude = '29.7277352'
        AND o.longitude = '-95.5933306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. John J. Nguyen, Doctor''s Office'
        AND o.latitude = '29.7277352'
        AND o.longitude = '-95.5933306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. John J. Nguyen, Doctor''s Office'
        AND o.latitude = '29.7277352'
        AND o.longitude = '-95.5933306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. John J. Nguyen, Doctor''s Office'
        AND o.latitude = '29.7277352'
        AND o.longitude = '-95.5933306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. John J. Nguyen, Doctor''s Office'
        AND o.latitude = '29.7277352'
        AND o.longitude = '-95.5933306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. John J. Nguyen, Doctor''s Office'
        AND o.latitude = '29.7277352'
        AND o.longitude = '-95.5933306'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. John J. Nguyen, Doctor''s Office'
        AND o.latitude = '29.7277352'
        AND o.longitude = '-95.5933306'));

COMMIT;
