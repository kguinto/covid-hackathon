
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
      'Chesapeake Regional Medical Center',
      '736 N Battlefield Blvd
Chesapeake, VA 23320',
      'Chesapeake',
      'VA',
      'TBD',
      'Unknown',
      '36.746263',
      '-76.2457816'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.746263'
        AND o.longitude = '-76.2457816'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.746263'
        AND o.longitude = '-76.2457816'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.746263'
        AND o.longitude = '-76.2457816'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.746263'
        AND o.longitude = '-76.2457816'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.746263'
        AND o.longitude = '-76.2457816'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.746263'
        AND o.longitude = '-76.2457816'));

COMMIT;
