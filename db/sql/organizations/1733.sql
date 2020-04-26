
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
      'Kaiser Santa Clara',
      '13171 Via Arriba Dr
Saratoga, CA 95070',
      'Saratoga ',
      'CA',
      '',
      'No',
      '37.2761122',
      '-122.0107969'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Santa Clara'
        AND o.latitude = '37.2761122'
        AND o.longitude = '-122.0107969'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Santa Clara'
        AND o.latitude = '37.2761122'
        AND o.longitude = '-122.0107969'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Santa Clara'
        AND o.latitude = '37.2761122'
        AND o.longitude = '-122.0107969'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Santa Clara'
        AND o.latitude = '37.2761122'
        AND o.longitude = '-122.0107969'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Santa Clara'
        AND o.latitude = '37.2761122'
        AND o.longitude = '-122.0107969'));

COMMIT;
