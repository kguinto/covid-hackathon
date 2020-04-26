
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
      'Tucson Medical Center-AIM',
      '2794 N Tyndall Ave
Tucson, AZ 85719',
      'Tucson',
      'AZ',
      '2794 N Tyndall Ave',
      'Yes',
      '32.2573233',
      '-110.9574162'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tucson Medical Center-AIM'
        AND o.latitude = '32.2573233'
        AND o.longitude = '-110.9574162'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tucson Medical Center-AIM'
        AND o.latitude = '32.2573233'
        AND o.longitude = '-110.9574162'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tucson Medical Center-AIM'
        AND o.latitude = '32.2573233'
        AND o.longitude = '-110.9574162'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tucson Medical Center-AIM'
        AND o.latitude = '32.2573233'
        AND o.longitude = '-110.9574162'));

COMMIT;
