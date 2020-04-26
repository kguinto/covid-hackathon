
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
      'Primary Health Medical Group',
      '10482 W Carlton Bay Dr
Garden City, ID 83714',
      'Garden City',
      'ID',
      'ATTN: Tracy Morris - tracy.morris@primaryhealth.com; 208-340-2843. Please call for drop-off/delivery instructions. ',
      'Yes',
      '43.6811373',
      '-116.311923'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Health Medical Group'
        AND o.latitude = '43.6811373'
        AND o.longitude = '-116.311923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Health Medical Group'
        AND o.latitude = '43.6811373'
        AND o.longitude = '-116.311923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Health Medical Group'
        AND o.latitude = '43.6811373'
        AND o.longitude = '-116.311923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Health Medical Group'
        AND o.latitude = '43.6811373'
        AND o.longitude = '-116.311923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Health Medical Group'
        AND o.latitude = '43.6811373'
        AND o.longitude = '-116.311923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns are in extreme needs.',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Health Medical Group'
        AND o.latitude = '43.6811373'
        AND o.longitude = '-116.311923'));

COMMIT;
