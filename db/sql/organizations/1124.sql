
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
      'HealthNeed Medical Urgent Care',
      'Main St
Queens, NY',
      'Flushing',
      'NY',
      'Please call to arrange. I can pick up if drop off isn''t available.',
      'Yes',
      '40.7359744',
      '-73.8250952'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'HealthNeed Medical Urgent Care'
        AND o.latitude = '40.7359744'
        AND o.longitude = '-73.8250952'));

COMMIT;
