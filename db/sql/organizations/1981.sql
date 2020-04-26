
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
      'Family Practice Associates of Taos',
      '630 Paseo Del Pueblo Sur #150
Taos, NM 87571',
      'Taos',
      'NM',
      '630 Paseo del Pueblo Sur, Suite  150',
      'No',
      '36.3942674',
      '-105.5814213'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Practice Associates of Taos'
        AND o.latitude = '36.3942674'
        AND o.longitude = '-105.5814213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Practice Associates of Taos'
        AND o.latitude = '36.3942674'
        AND o.longitude = '-105.5814213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Practice Associates of Taos'
        AND o.latitude = '36.3942674'
        AND o.longitude = '-105.5814213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Practice Associates of Taos'
        AND o.latitude = '36.3942674'
        AND o.longitude = '-105.5814213'));

COMMIT;
