
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
      'Rochester General Hospital',
      '1425 Portland Ave
Rochester, NY 14621',
      'Rochester',
      'NY',
      'ATTN: Dr. Brian Greenburg Rochester General Hospital Emergency Department


OR


Email richardecoiamd@gmail.com',
      'Yes',
      '43.1927407',
      '-77.5855935'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester General Hospital'
        AND o.latitude = '43.1927407'
        AND o.longitude = '-77.5855935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester General Hospital'
        AND o.latitude = '43.1927407'
        AND o.longitude = '-77.5855935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester General Hospital'
        AND o.latitude = '43.1927407'
        AND o.longitude = '-77.5855935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester General Hospital'
        AND o.latitude = '43.1927407'
        AND o.longitude = '-77.5855935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester General Hospital'
        AND o.latitude = '43.1927407'
        AND o.longitude = '-77.5855935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester General Hospital'
        AND o.latitude = '43.1927407'
        AND o.longitude = '-77.5855935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester General Hospital'
        AND o.latitude = '43.1927407'
        AND o.longitude = '-77.5855935'));

COMMIT;
