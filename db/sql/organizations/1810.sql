
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
      'Riverside Community Hospital ',
      '4445 Magnolia Ave
Riverside, CA 92501',
      'Riverside ',
      'CA',
      'Mail to
 4445 magnolia ave
Riverside, CA 92508',
      'No',
      '33.9772213',
      '-117.3815694'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Community Hospital '
        AND o.latitude = '33.9772213'
        AND o.longitude = '-117.3815694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Community Hospital '
        AND o.latitude = '33.9772213'
        AND o.longitude = '-117.3815694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Community Hospital '
        AND o.latitude = '33.9772213'
        AND o.longitude = '-117.3815694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Community Hospital '
        AND o.latitude = '33.9772213'
        AND o.longitude = '-117.3815694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Community Hospital '
        AND o.latitude = '33.9772213'
        AND o.longitude = '-117.3815694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Community Hospital '
        AND o.latitude = '33.9772213'
        AND o.longitude = '-117.3815694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Community Hospital '
        AND o.latitude = '33.9772213'
        AND o.longitude = '-117.3815694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Community Hospital '
        AND o.latitude = '33.9772213'
        AND o.longitude = '-117.3815694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Community Hospital '
        AND o.latitude = '33.9772213'
        AND o.longitude = '-117.3815694'));

COMMIT;
