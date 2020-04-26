
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
      'Durango Urgent Care',
      '2577 Main Avenue
Durango, CO 81301',
      'Durango',
      'CO',
      '',
      '',
      '37.292538',
      '-107.8746315'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Durango Urgent Care'
        AND o.latitude = '37.292538'
        AND o.longitude = '-107.8746315'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Durango Urgent Care'
        AND o.latitude = '37.292538'
        AND o.longitude = '-107.8746315'));

COMMIT;
