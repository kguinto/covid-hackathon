
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
      'Jackson County Memorial Hospital',
      '1200 East Pecan St. 
Altus, OK 73521',
      'Altus',
      'OK',
      'Call 580-379-5000 and ask for Mary Jencks',
      'No',
      '34.6369701',
      '-99.3171146'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson County Memorial Hospital'
        AND o.latitude = '34.6369701'
        AND o.longitude = '-99.3171146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson County Memorial Hospital'
        AND o.latitude = '34.6369701'
        AND o.longitude = '-99.3171146'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson County Memorial Hospital'
        AND o.latitude = '34.6369701'
        AND o.longitude = '-99.3171146'));

COMMIT;
