
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
      'Main Line Ear, Nose, and Throat Doctors',
      '100 East Lancaster Ave, Suite 650
Wynnewood, PA 19096',
      'Wynnewood',
      'PA',
      'Bring to office, drop off outside',
      'Yes',
      '39.9880032',
      '-75.2634923'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Main Line Ear, Nose, and Throat Doctors'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Main Line Ear, Nose, and Throat Doctors'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Main Line Ear, Nose, and Throat Doctors'
        AND o.latitude = '39.9880032'
        AND o.longitude = '-75.2634923'));

COMMIT;
