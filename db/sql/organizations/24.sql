
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
      'NewYork-Presbyterian/Columbia University Medical Center, Milstein Hospital Building',
      'Milstein Hospital Building
177 Fort Washington Ave
New York, NY 10032',
      'New York - Manhattan',
      'NY',
      'Please email masks@nyp.org to coordinate. 

|

For mailing, please send to:
Attn: David Chong, MD, 6th Floor Center 12 at this address

|

For curbside dropoffs: please call Angelica Saada (732-829-9684) or (646-965-4479) and she will arrange for someone to come meet you downstairs in the Milstein Hospital Lobby

|

Label "General Surgery Dept" and can leave with front desk in lobby


|

Drop off, Attn: Internal Medicine Program Office.',
      'Yes',
      '40.8414368',
      '-73.9430784'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian/Columbia University Medical Center, Milstein Hospital Building'
        AND o.latitude = '40.8414368'
        AND o.longitude = '-73.9430784'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian/Columbia University Medical Center, Milstein Hospital Building'
        AND o.latitude = '40.8414368'
        AND o.longitude = '-73.9430784'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian/Columbia University Medical Center, Milstein Hospital Building'
        AND o.latitude = '40.8414368'
        AND o.longitude = '-73.9430784'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian/Columbia University Medical Center, Milstein Hospital Building'
        AND o.latitude = '40.8414368'
        AND o.longitude = '-73.9430784'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian/Columbia University Medical Center, Milstein Hospital Building'
        AND o.latitude = '40.8414368'
        AND o.longitude = '-73.9430784'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian/Columbia University Medical Center, Milstein Hospital Building'
        AND o.latitude = '40.8414368'
        AND o.longitude = '-73.9430784'));

COMMIT;
