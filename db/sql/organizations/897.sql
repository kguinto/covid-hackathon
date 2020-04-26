
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
      'HCA Houston Healthcare Medical Center',
      '1313 Hermann Dr
Houston, TX 77004',
      'Houston',
      'TX',
      '',
      'Yes',
      '29.72272',
      '-95.3875429'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCA Houston Healthcare Medical Center'
        AND o.latitude = '29.72272'
        AND o.longitude = '-95.3875429'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCA Houston Healthcare Medical Center'
        AND o.latitude = '29.72272'
        AND o.longitude = '-95.3875429'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCA Houston Healthcare Medical Center'
        AND o.latitude = '29.72272'
        AND o.longitude = '-95.3875429'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCA Houston Healthcare Medical Center'
        AND o.latitude = '29.72272'
        AND o.longitude = '-95.3875429'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCA Houston Healthcare Medical Center'
        AND o.latitude = '29.72272'
        AND o.longitude = '-95.3875429'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCA Houston Healthcare Medical Center'
        AND o.latitude = '29.72272'
        AND o.longitude = '-95.3875429'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCA Houston Healthcare Medical Center'
        AND o.latitude = '29.72272'
        AND o.longitude = '-95.3875429'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCA Houston Healthcare Medical Center'
        AND o.latitude = '29.72272'
        AND o.longitude = '-95.3875429'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCA Houston Healthcare Medical Center'
        AND o.latitude = '29.72272'
        AND o.longitude = '-95.3875429'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'HCA Houston Healthcare Medical Center'
        AND o.latitude = '29.72272'
        AND o.longitude = '-95.3875429'));

COMMIT;
