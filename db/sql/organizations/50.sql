
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
      'St. Luke''s Hospital',
      '232 S Woods Mill Rd
Chesterfield, MO 63017',
      'Chesterfield',
      'MO',
      'Curbside',
      'Yes',
      '38.6522289',
      '-90.5028713'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s Hospital'
        AND o.latitude = '38.6522289'
        AND o.longitude = '-90.5028713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s Hospital'
        AND o.latitude = '38.6522289'
        AND o.longitude = '-90.5028713'));

COMMIT;
