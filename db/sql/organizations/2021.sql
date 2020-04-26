
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
      'Long Island Community hospital ',
      '101 Hospital Rd
Patchogue, NY 11772',
      'Patchogue',
      'NY',
      'Long Island Community Hospital 
101 Hospital Road, Patchogue, NY 11772 ',
      'Yes',
      '2487',
      'undefined'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community hospital '
        AND o.latitude = '2487'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community hospital '
        AND o.latitude = '2487'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community hospital '
        AND o.latitude = '2487'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community hospital '
        AND o.latitude = '2487'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community hospital '
        AND o.latitude = '2487'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community hospital '
        AND o.latitude = '2487'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community hospital '
        AND o.latitude = '2487'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community hospital '
        AND o.latitude = '2487'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Long Island Community hospital '
        AND o.latitude = '2487'
        AND o.longitude = 'undefined'));

COMMIT;
