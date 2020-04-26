
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
      '1277 Lambeth Ln
Virginia Beach, VA 23455',
      'Virginia Beach',
      'VA',
      'This is the home address of the doctor in charge of distribution, please leave on the front porch.',
      'Yes',
      '36.8810114',
      '-76.152152'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.8810114'
        AND o.longitude = '-76.152152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.8810114'
        AND o.longitude = '-76.152152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.8810114'
        AND o.longitude = '-76.152152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.8810114'
        AND o.longitude = '-76.152152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.8810114'
        AND o.longitude = '-76.152152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.8810114'
        AND o.longitude = '-76.152152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.8810114'
        AND o.longitude = '-76.152152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.8810114'
        AND o.longitude = '-76.152152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.8810114'
        AND o.longitude = '-76.152152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('hand sewn masks are also acceptable',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chesapeake Regional Medical Center'
        AND o.latitude = '36.8810114'
        AND o.longitude = '-76.152152'));

COMMIT;
