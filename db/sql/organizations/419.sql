
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
      'Children''s Mercy',
      '5808 W 110th St
Overland Park, KS 66211',
      'Overland Park',
      'KS',
      'Unsure',
      'No',
      '38.9300791',
      '-94.6524616'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Mercy'
        AND o.latitude = '38.9300791'
        AND o.longitude = '-94.6524616'));

COMMIT;
