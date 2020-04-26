
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
      'Sunrise Hospital',
      '3131 La Canada St Suite 107
Las Vegas, NV 89169',
      'Las Vegas',
      'NV',
      'Drop off at above address | MAIL IN to sunrise medical center, ATTN: Tracy Szymanski, 3186 S Maryland PKWY, Las Vegas, NV 89131',
      'Yes',
      '36.1323404',
      '-115.1332383'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Hospital'
        AND o.latitude = '36.1323404'
        AND o.longitude = '-115.1332383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Hospital'
        AND o.latitude = '36.1323404'
        AND o.longitude = '-115.1332383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Hospital'
        AND o.latitude = '36.1323404'
        AND o.longitude = '-115.1332383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Hospital'
        AND o.latitude = '36.1323404'
        AND o.longitude = '-115.1332383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Hospital'
        AND o.latitude = '36.1323404'
        AND o.longitude = '-115.1332383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Hospital'
        AND o.latitude = '36.1323404'
        AND o.longitude = '-115.1332383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Hospital'
        AND o.latitude = '36.1323404'
        AND o.longitude = '-115.1332383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Hospital'
        AND o.latitude = '36.1323404'
        AND o.longitude = '-115.1332383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Hospital'
        AND o.latitude = '36.1323404'
        AND o.longitude = '-115.1332383'));

COMMIT;
