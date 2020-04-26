
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
      'Consultants and Cardiology and Electrophysiology',
      '3545 95th St
Evergreen Park, IL 60805',
      'Evergreen Park',
      'IL',
      'Can be dropped off in the office Monday through Friday 9 to 5',
      'No',
      '41.7202804',
      '-87.7105046'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Consultants and Cardiology and Electrophysiology'
        AND o.latitude = '41.7202804'
        AND o.longitude = '-87.7105046'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Consultants and Cardiology and Electrophysiology'
        AND o.latitude = '41.7202804'
        AND o.longitude = '-87.7105046'));

COMMIT;
