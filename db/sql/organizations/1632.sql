
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
      'Medical City Arlington Emergency Room',
      '3001 Matlock Rd
Arlington, TX 76014',
      'Arlington ',
      'TX',
      'Drop off at the Emergency Department front desk ',
      'No',
      '32.6959788',
      '-97.114827'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Arlington Emergency Room'
        AND o.latitude = '32.6959788'
        AND o.longitude = '-97.114827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Arlington Emergency Room'
        AND o.latitude = '32.6959788'
        AND o.longitude = '-97.114827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Arlington Emergency Room'
        AND o.latitude = '32.6959788'
        AND o.longitude = '-97.114827'));

COMMIT;
