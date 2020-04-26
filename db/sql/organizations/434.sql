
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
      'UF Health',
      '655 8th St W
Jacksonville, FL 32209',
      'Jacksonville',
      'FL',
      '',
      'Unsure',
      '30.348622',
      '-81.6641394'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UF Health'
        AND o.latitude = '30.348622'
        AND o.longitude = '-81.6641394'));

COMMIT;
