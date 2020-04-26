
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
      'Alliance Health at Rosewood',
      '22 Johnson St
Peabody, MA 01960',
      'Peabody',
      'MA',
      'Either drop off or mail. Call 978-317-4852 and ask for Dr. Lucas.',
      'No',
      '42.546416',
      '-70.9928977'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alliance Health at Rosewood'
        AND o.latitude = '42.546416'
        AND o.longitude = '-70.9928977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alliance Health at Rosewood'
        AND o.latitude = '42.546416'
        AND o.longitude = '-70.9928977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alliance Health at Rosewood'
        AND o.latitude = '42.546416'
        AND o.longitude = '-70.9928977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alliance Health at Rosewood'
        AND o.latitude = '42.546416'
        AND o.longitude = '-70.9928977'));

COMMIT;
