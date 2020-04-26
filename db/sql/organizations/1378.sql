
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
      'The Magnolia of Millbrae',
      '201 Chadbourne Ave
Millbrae, CA 94030',
      'Millbrae',
      'CA',
      'Drop off inside the first set of double doors',
      'Yes',
      '37.5977108',
      '-122.3903556'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Magnolia of Millbrae'
        AND o.latitude = '37.5977108'
        AND o.longitude = '-122.3903556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Magnolia of Millbrae'
        AND o.latitude = '37.5977108'
        AND o.longitude = '-122.3903556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Magnolia of Millbrae'
        AND o.latitude = '37.5977108'
        AND o.longitude = '-122.3903556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Magnolia of Millbrae'
        AND o.latitude = '37.5977108'
        AND o.longitude = '-122.3903556'));

COMMIT;
