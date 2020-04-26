
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
      'The Children''s Clinic',
      '555 SW Barnes Rd Suite 301
Portland, OR 97225',
      'Portland ',
      'OR',
      'By the clinic door (3rd floor) and ring bell',
      'Yes',
      '45.5107932',
      '-122.775672'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Children''s Clinic'
        AND o.latitude = '45.5107932'
        AND o.longitude = '-122.775672'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Children''s Clinic'
        AND o.latitude = '45.5107932'
        AND o.longitude = '-122.775672'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Children''s Clinic'
        AND o.latitude = '45.5107932'
        AND o.longitude = '-122.775672'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Children''s Clinic'
        AND o.latitude = '45.5107932'
        AND o.longitude = '-122.775672'));

COMMIT;
