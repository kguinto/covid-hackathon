
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
      'Circle Health Urgent Care',
      '9 Loon Hill Rd
Dracut, MA 01826',
      'Dracut',
      'MA',
      'mail, pick-up',
      'unsure',
      '42.6717828',
      '-71.2949461'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Circle Health Urgent Care'
        AND o.latitude = '42.6717828'
        AND o.longitude = '-71.2949461'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Circle Health Urgent Care'
        AND o.latitude = '42.6717828'
        AND o.longitude = '-71.2949461'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Circle Health Urgent Care'
        AND o.latitude = '42.6717828'
        AND o.longitude = '-71.2949461'));

COMMIT;
