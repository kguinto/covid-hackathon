
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
      'Tribeca Pediatrics',
      '211 North End Ave #12C
New York, NY 10282',
      'New York - Manhattan',
      'NY',
      'Mailing address',
      'Yes',
      '40.7161318',
      '-74.0155571'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tribeca Pediatrics'
        AND o.latitude = '40.7161318'
        AND o.longitude = '-74.0155571'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('I only need one to continue providing care of my patients',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tribeca Pediatrics'
        AND o.latitude = '40.7161318'
        AND o.longitude = '-74.0155571'));

COMMIT;
