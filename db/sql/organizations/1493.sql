
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
      'Dutchess County Children and Family Services',
      '60 Market St
Poughkeepsie, NY 12601',
      'Poughkeepsie',
      'NY',
      'Mail to Colleen Maher 1 Peters Pass Port Ewen NY 12466 or call 845-594-9360 to set up pickup',
      'Yes',
      '41.7022868',
      '-73.9300578'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dutchess County Children and Family Services'
        AND o.latitude = '41.7022868'
        AND o.longitude = '-73.9300578'));

COMMIT;
