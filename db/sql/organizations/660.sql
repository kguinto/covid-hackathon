
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
      'Washington Hospital Healthcare System',
      '2000 Mowry Ave
Fremont, CA 94538',
      'Fremont',
      'CA',
      'Contact Washington Hospital Healthcare Foundation at 510-818-7350, foundation@whhs.com. Please do not go to ED or other hospital areas without first contacting the Foundation. More details at https://www.whhs.com/COVID-19-Coronavirus-.aspx',
      'Yes',
      '37.55726',
      '-121.9797604'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Washington Hospital Healthcare System'
        AND o.latitude = '37.55726'
        AND o.longitude = '-121.9797604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Washington Hospital Healthcare System'
        AND o.latitude = '37.55726'
        AND o.longitude = '-121.9797604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Washington Hospital Healthcare System'
        AND o.latitude = '37.55726'
        AND o.longitude = '-121.9797604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Washington Hospital Healthcare System'
        AND o.latitude = '37.55726'
        AND o.longitude = '-121.9797604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Washington Hospital Healthcare System'
        AND o.latitude = '37.55726'
        AND o.longitude = '-121.9797604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Washington Hospital Healthcare System'
        AND o.latitude = '37.55726'
        AND o.longitude = '-121.9797604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Washington Hospital Healthcare System'
        AND o.latitude = '37.55726'
        AND o.longitude = '-121.9797604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Washington Hospital Healthcare System'
        AND o.latitude = '37.55726'
        AND o.longitude = '-121.9797604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Washington Hospital Healthcare System'
        AND o.latitude = '37.55726'
        AND o.longitude = '-121.9797604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Washington Hospital Healthcare System'
        AND o.latitude = '37.55726'
        AND o.longitude = '-121.9797604'));

COMMIT;
