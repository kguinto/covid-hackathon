
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
      'Family Care Network',
      '709 W. Orchard Drive, Suite 4 
Bellingham, WA 98225',
      'Bellingham',
      'WA',
      '',
      'Unknown',
      '48.7784856',
      '-122.4809493'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Care Network'
        AND o.latitude = '48.7784856'
        AND o.longitude = '-122.4809493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Care Network'
        AND o.latitude = '48.7784856'
        AND o.longitude = '-122.4809493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Care Network'
        AND o.latitude = '48.7784856'
        AND o.longitude = '-122.4809493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Care Network'
        AND o.latitude = '48.7784856'
        AND o.longitude = '-122.4809493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Care Network'
        AND o.latitude = '48.7784856'
        AND o.longitude = '-122.4809493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Care Network'
        AND o.latitude = '48.7784856'
        AND o.longitude = '-122.4809493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Care Network'
        AND o.latitude = '48.7784856'
        AND o.longitude = '-122.4809493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Lab coats or gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Care Network'
        AND o.latitude = '48.7784856'
        AND o.longitude = '-122.4809493'));

COMMIT;
