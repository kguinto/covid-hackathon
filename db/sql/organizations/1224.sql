
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
      'Unity Point St. Lukes',
      '1026 A Ave NE
Cedar Rapids, IA 52402',
      'Cedar Rapids',
      'IA',
      'Main Entrance of the hospital',
      'Yes',
      '41.9853036',
      '-91.6604322'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Point St. Lukes'
        AND o.latitude = '41.9853036'
        AND o.longitude = '-91.6604322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Sewn Masks: https://www.unitypoint.org/cedarrapids/sewing-surgical-masks.aspx',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Point St. Lukes'
        AND o.latitude = '41.9853036'
        AND o.longitude = '-91.6604322'));

COMMIT;
