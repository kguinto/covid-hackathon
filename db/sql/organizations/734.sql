
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
      'North Bay Cardiology & North Bay Cardiac Imaging',
      '4740 Hoen Ave
Santa Rosa, CA 95405',
      'Santa Rosa',
      'CA',
      'Please call the office for delivery instructions at 707-542-2783',
      'Yes, anything we can not use will be given directly to hospital nursing staff',
      '38.4422512',
      '-122.6636382'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Bay Cardiology & North Bay Cardiac Imaging'
        AND o.latitude = '38.4422512'
        AND o.longitude = '-122.6636382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Bay Cardiology & North Bay Cardiac Imaging'
        AND o.latitude = '38.4422512'
        AND o.longitude = '-122.6636382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Bay Cardiology & North Bay Cardiac Imaging'
        AND o.latitude = '38.4422512'
        AND o.longitude = '-122.6636382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Bay Cardiology & North Bay Cardiac Imaging'
        AND o.latitude = '38.4422512'
        AND o.longitude = '-122.6636382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Bay Cardiology & North Bay Cardiac Imaging'
        AND o.latitude = '38.4422512'
        AND o.longitude = '-122.6636382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Bay Cardiology & North Bay Cardiac Imaging'
        AND o.latitude = '38.4422512'
        AND o.longitude = '-122.6636382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Bay Cardiology & North Bay Cardiac Imaging'
        AND o.latitude = '38.4422512'
        AND o.longitude = '-122.6636382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Bay Cardiology & North Bay Cardiac Imaging'
        AND o.latitude = '38.4422512'
        AND o.longitude = '-122.6636382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Bay Cardiology & North Bay Cardiac Imaging'
        AND o.latitude = '38.4422512'
        AND o.longitude = '-122.6636382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Bay Cardiology & North Bay Cardiac Imaging'
        AND o.latitude = '38.4422512'
        AND o.longitude = '-122.6636382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('probe covers for digital oral thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Bay Cardiology & North Bay Cardiac Imaging'
        AND o.latitude = '38.4422512'
        AND o.longitude = '-122.6636382'));

COMMIT;
