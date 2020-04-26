
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
      'Arcadia Methodist Hospital',
      '300 W Huntington Dr
Arcadia, CA 91007',
      'Arcadia ',
      'CA',
      'ATTN: Emergency Room',
      'Yes',
      '34.1344486',
      '-118.0416623'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arcadia Methodist Hospital'
        AND o.latitude = '34.1344486'
        AND o.longitude = '-118.0416623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arcadia Methodist Hospital'
        AND o.latitude = '34.1344486'
        AND o.longitude = '-118.0416623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arcadia Methodist Hospital'
        AND o.latitude = '34.1344486'
        AND o.longitude = '-118.0416623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arcadia Methodist Hospital'
        AND o.latitude = '34.1344486'
        AND o.longitude = '-118.0416623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arcadia Methodist Hospital'
        AND o.latitude = '34.1344486'
        AND o.longitude = '-118.0416623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arcadia Methodist Hospital'
        AND o.latitude = '34.1344486'
        AND o.longitude = '-118.0416623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arcadia Methodist Hospital'
        AND o.latitude = '34.1344486'
        AND o.longitude = '-118.0416623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arcadia Methodist Hospital'
        AND o.latitude = '34.1344486'
        AND o.longitude = '-118.0416623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arcadia Methodist Hospital'
        AND o.latitude = '34.1344486'
        AND o.longitude = '-118.0416623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arcadia Methodist Hospital'
        AND o.latitude = '34.1344486'
        AND o.longitude = '-118.0416623'));

COMMIT;
