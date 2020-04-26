
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
      'Bear Valley Community Health Care District',
      '41870 Garstin Dr
Big Bear Lake, CA 92315',
      'Big Bear Lake',
      'CA',
      'Attn: Purchasing/Steve',
      'Yes',
      '34.2465111',
      '-116.8884951'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bear Valley Community Health Care District'
        AND o.latitude = '34.2465111'
        AND o.longitude = '-116.8884951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bear Valley Community Health Care District'
        AND o.latitude = '34.2465111'
        AND o.longitude = '-116.8884951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bear Valley Community Health Care District'
        AND o.latitude = '34.2465111'
        AND o.longitude = '-116.8884951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bear Valley Community Health Care District'
        AND o.latitude = '34.2465111'
        AND o.longitude = '-116.8884951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bear Valley Community Health Care District'
        AND o.latitude = '34.2465111'
        AND o.longitude = '-116.8884951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bear Valley Community Health Care District'
        AND o.latitude = '34.2465111'
        AND o.longitude = '-116.8884951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bear Valley Community Health Care District'
        AND o.latitude = '34.2465111'
        AND o.longitude = '-116.8884951'));

COMMIT;
