
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
      'AppleCare Urgent Care',
      '14089 Abercorn St
Savannah, GA 31419',
      'Savannah',
      'GA',
      'Delivery or pick up.',
      'Unsure',
      '31.9829584',
      '-81.1758048'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Urgent Care'
        AND o.latitude = '31.9829584'
        AND o.longitude = '-81.1758048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Urgent Care'
        AND o.latitude = '31.9829584'
        AND o.longitude = '-81.1758048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Urgent Care'
        AND o.latitude = '31.9829584'
        AND o.longitude = '-81.1758048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Urgent Care'
        AND o.latitude = '31.9829584'
        AND o.longitude = '-81.1758048'));

COMMIT;
